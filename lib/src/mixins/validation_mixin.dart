class ValidationMixin{

String validationEmail(String value){
      if(!value.contains('@')){
        return 'Not valid email';
      }
      return null;

}
String validationName(String value){
      if(value.isEmpty){
        return 'Enter Name';
      }
      return null;
    }
}