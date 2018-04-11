program palochki;
uses crt;
var
   input,count,taken,ptaken:integer;
Begin
     writeln('Добро пожаловать в игру Баше.');
     writeln('На столе лежит определенное кол-во палочек.');
     writeln('Ваша цель-взять последнюю палочку.');
     writeln('Игроки по очереди берут до 3х палочек, пока они не закончатся.');
     writeln('');
     writeln('Выберите режим игры (введите номер)');
     writeln('1 - Cтандартный (Вы играете против пк.)');
     writeln('2 - 2 игрока (Вы можете играть со своим другом, делая ходы последовательно.)');
     read(input);
     count:=21;
  
     case input of                                                                                           //case, определяющий режим игры
          1:
               Begin
                    
                    writeln('количество палочек:', count);
                    writeln('Игра начинается.');
                    writeln('Первым ходит компьютер');
                    writeln('Компьютер берет 1 палочку');
                    count:=count-1;
                    writeln('Палочек осталось: ', count);
                    while count>0 do
                          Begin
                                                                                             
                             writeln('Ваш ход');                                       //начало хода игрока
                             readln(taken);
                             while (taken >3) or (taken <1) do
                             Begin
                              writeln('Вы взяли неправильное кол-во палочек.');
                              writeln('Попробуйте еще раз.');
                              read(taken);
                             end;
                             writeln('Вы взяли ', taken);
                             count:=count-taken;
                             writeln('Палочек осталось: ', count);

                             if count<=3 then                                                  //победный ход пк


                                     Begin
                                       writeln('Ход компьютера');
                                       writeln('Компьютер берет ', count);
                                       writeln('Компьютер победил');
                                       break;
                                     end;
                                


                                if count>0 then
                                  Begin
                                     writeln('Ход компьютера');            //начало хода пк
                                    ptaken:=4-taken;
                                    writeln('Компьютер берет ', ptaken);
                                    count:=count-ptaken;
                                    writeln('Палочек осталось ', count);
                                  end;

                           end;

               end;
          2:
            while count >0 do
              begin
                writeln('Ход первого игрока');
                read(taken);
                while (taken > 3) or (taken < 1) do
                begin
                  writeln('Неправильное значение');
                  read(taken);
                end;
                writeln('Игрок 1 взял ', taken);                
                count:=count-taken;
                taken:=0;
                
                if count <= 0 then
                  begin
                    writeln('Игрок 1-победитель');
                    break;
                  end;
                writeln('Палочек осталось: ', count);
                writeln('Ход второго игрока');
                read(taken);
                while (taken > 3) or (taken < 1) do
                begin
                  writeln('Неправильное значение');
                  read(taken);
                end;
                writeln('Игрок 2 взял ', taken);
                count:=count-taken;
                taken:=0;
                
                if count <= 0 then
                  begin
                    writeln('Игрок 2-победитель');
                    break;
                  end;
                writeln('Палочек осталось: ', count);
              end;

     end;

end.
         