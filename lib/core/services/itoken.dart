abstract class itoken {
  Future<void> setaccessToken(String token);
  

  Future<String> getaccessToken();

  Future<void> deleteaccessToken();
  
}
