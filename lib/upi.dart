import 'package:bme/UserFields.dart';
import 'package:gsheets/gsheets.dart';

class Upi {
  static const Credentials = r'''{
  "type": "service_account",
  "project_id": "glucosegsheet",
  "private_key_id": "b309d7626009d1daf33aa1db11264177966be2a3",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCrFtsxPAqUTt+e\nN6zTOIUcdoLGuAWZ5SHLOQJAipeFReGHXtJZOLK7hMxfcIw35VJVrvwtCdK2lc+1\n8tVQHmYV1zChDbqamIPzZY1R4+se62OwzTsJKAEa7WnFu7+MOqQl81d2mz6MO3Li\n7Tghm/OYXgQ4h3klvVXdXrhELSBY3xGFwgDeq5ab2dGi27TS6P8wH6WfHLVAJrXS\nPu2gJ+xXJ2+stuIWwjPqrJpm0msZKf3YCrrUBCd0smuLlN+qTIBWe49nDF8pDcF9\nK1xUevPy+QbdD8Pb3FDUrgx4YpBMxKdM4wzTFxaopLUXW0Ajy3y6en+mvYbO0Chu\nAE0jd8ZZAgMBAAECggEAFsZQH1myvtNRCSq4ItXfQk60UeelNzs9KGRKXHUWfnMy\n9mY08hOOF1AyNHIy+C3aq/VDNGueVRfUMpBEvQmO5VFj88x0DqhGyFu4WDJS1ibX\nem2XcjyVCRSZg+zeLriPqU2fUvaPePNg87xIQJEV+C5ruWqvQcrWZ0V4mfq315yC\na5gxPLiD4ZjOlx3ulxCUO6CZBxdqaCUqrhrxn5/H2A1aVNE19e984wF5H7r1yWYW\nbdv/BzHzpvPYpKLgWsypo7ABR4Okrlg1YkxFVL0z0o3KKRAmhjm5I2J1xWGEuryb\nHZSWNcNf+spBxSzraJ6o8g9V2b4JCzhxPnFrTldiEQKBgQDT+p/bvR2z9gEmwxaq\nL5XPxDZUz5C5QbbSKAYmPyWK/GQESmg3EUs5mnQDNuZfdCEKsVJqsuDOcZIsz/Qk\n9HKxeit+hcX1bvLa8mJvyAFlLWP8+7nDgcMnmbIzmk3DQmjXt9NszL5DGpCsZfh0\ntkms1FdSTMQr+mxeXDswbDQdBwKBgQDOnmyJsliyG+hj+vxkwSnFioXCrQZdbhNQ\nJJlFXeqRe/Iu3vm5A6leAszVmLzQtfDkewsJug1QiNVew0V/gMQynv5Xyj30wsPQ\nhN4QFZ1XYHkU8oXJO3Sd3vjC7C/4dmyKnhuajnVMRdNXtFvaLBEzh/4Wqn+Nf/Ou\nKpNpBKeJnwKBgBzgp6ZnvQQnH0EIkq3cjawgLsafADg8m4tFqJDNSXAFshpjiI73\n7CeMwwEtGXUnfNjYD0I53CZDkoZITho6suU6n3I9BxrIYo0xN/fCZ25BIL32DPh1\nVQCwD3a4Lp/LDD1W7ZaEzeaWV98khRRhQOgqhTrQ+miDVQAF0IpoMzFBAoGASQkb\nGLlgPOU8ikrn+L2HBHrouV3sCA6m6Qdm3mxKRE7p1sOexlWTAtY+japF5AjMNBeC\nWVfY6QTVV3/zCxT7RWGKSoIE0IYgLY8p58mcKozBgDQSMoW/vSZaDJzsgAlsaLtm\nyoVc1S9Be5kXdtFo6yxBFsYB/ISkIIaQQOkSR8UCgYEAxofUmgDkExcZw9l9vRds\nxhv3MOzKU6yyorvanvwLLYNEopb0bIJuBCdHjpHDL/reQgICv70TJICI2h0pIEZv\n4XByOeElSHFg98q3OGvozlGyhWGiCK2TUKMsRxA9nIWFtA4Y3wxQ0ka71zAkMK3p\n46dmJIns/2Ly+wQ2aVEkbKc=\n-----END PRIVATE KEY-----\n",
  "client_email": "glucosegsheet@glucosegsheet.iam.gserviceaccount.com",
  "client_id": "108290717156261996933",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/glucosegsheet%40glucosegsheet.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"
}
''';
  static final SpreadsheetId = '1Y2H-5wqZ6rTSiIDvS91LC2l6nDP_CrHgQxm1siJZ6lo';
  static final _gsheets = GSheets(Credentials);
  static Worksheet? _userSheet;
  static Future init() async {
    try {
      final Spreadsheet = await _gsheets.spreadsheet(SpreadsheetId);
      _userSheet = await _getWorkSheet(Spreadsheet, title: 'Glucose');

      final firstRow = UserFields.getfields();
      _userSheet!.values.insertRow(1, firstRow);
    } catch (e) {
      print('Init Error: $e');
    }
  }

  static Future<Worksheet?> _getWorkSheet(
    Spreadsheet spreadsheet, {
    required String title,
  }) async {
    try {
      return await spreadsheet.addWorksheet(title);
    } catch (e) {
      return spreadsheet.worksheetByTitle(title);
    }
  }

  static Future insert(List<Map<String, dynamic>> rowList) async {
    if (_userSheet == null) return;
    _userSheet!.values.map.appendRows(rowList);
  }
}
