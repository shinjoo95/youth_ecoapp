
import 'package:validators/validators.dart';

Function validateUsername(){
  return (String? value){
    if(value!.isEmpty){
      return "아이디를 입력하세요.";
    }else if(!isAlphanumeric(value)){
      return "아이디 한글 안됨.";
    }else if(value.length < 5){
      return "아이디가 너무 짧아";
    }else{
      return null;
    }
  };
}
Function validatePassword(){
  return (String? value){
    if(value!.isEmpty){
      return "비밀번호를 입력하세요";
    }else if(value.length < 6){
      return "비밀번호가 너무 짧습니다.";
    }else{
      return null;
    }
  };
}
Function validateEmail(){
  return (String? value){
    if(value!.isEmpty){
      return "이메일을 입력하세요.";
    }else if(!isAlphanumeric(value)){
      return "이메일 확인 부탁.";
    }else if(isEmail(value)){
      return "이메일 확인 부탁.";
    }else{
      return null;
    }
  };
}

Function validateNumber(){
  return (String? value){
    if(value!.isEmpty){
      return "공백 안됨.";
    }else if(isAlpha(value)){
      return "숫자로 쓰셈";
    }else if(value.length != 11){
      return "똑바로 쓰셈";
    }else{
      return null;
    }
  };
}

Function validateBirth(){
  return (String? value){
    if(value!.isEmpty){
      return "공백 안됨.";
    }else if(isAlpha(value)){
      return "숫자로 쓰셈";
    }else if(value.length != 6){
      return "똑바로 쓰셈";
    }else{
      return null;
    }
  };
}
Function validateTitle(){
  return (String? value){
    if(value!.isEmpty){
      return "제목을 적어주세요.";
    }else if(value.length > 30){
      return "제목이 너무 길어요";
    }else{
      return null;
    }
  };
}
Function validateContent(){
  return (String? value){
    if(value!.isEmpty){
      return "내용을 적어주세요";
    }else if(value.length > 1000){
      return "내용이 너무 길어요";
    }else{
      return null;
    }
  };
}

