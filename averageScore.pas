{Program to calculate the average score from
ADS students v 0.0.1
Author: Rafael.Santos}
PROGRAM average_score;
USES crt;
VAR p1, p2, aver: DOUBLE;
VAR op: char;
LABEL start;
BEGIN
    start:
    clrscr();
    writeln('************************************************************************************');
    writeln('*                          Average Score Calculator                                *');
    writeln('*                   Type the First and the Last test Score                         *');
    writeln('************************************************************************************');
    readln(p1,p2);
    aver:= (p1+p2)/2;
    IF (p1=0) AND (p2=0)THEN
        write('Thank you!');
        readln;
        END.
    IF aver > 6 THEN
        BEGIN
            writeln('Your finals were: ', aver:2:1);
            writeln('and your have passed!');
        END
    ELSE
        writeln('You failed, your score was: ',aver:2:1);
    readln;
    writeln('Do you wish to put your scores again? y/n');
    readln(op);
    IF op='y' THEN
        GOTO start
    ELSE
        writeln('Thank you!');
END.

