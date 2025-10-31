enum gender{
  Male,
  Female,
  Others
}

void main(){
  for(gender gen in gender.values){
    print(gen);
  }
}