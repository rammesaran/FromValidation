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

    String validationMobile(String value){
      if(value.isEmpty){
        return 'Enter Mobile Number';
      }
      return null;
    }
}