{Program to calculate the average score from
ADS students v 0.0.1}
PROGRAM average_score;
VAR p1, p2, aver: real;
VAR op: char;
LABEL start;
BEGIN
    start: readln;
    writeln('************************************************************************************');
    writeln('*                          Average Score Calculator                                *');
    writeln('*                   Type the First and the Last test Score                         *');
    writeln('************************************************************************************');
    readln(p1,p2);
    aver:= (p1+p2)/2;
    IF(aver>6)THEN
        BEGIN
            writeln('Your finals were: ', aver:2:1);
            writeln('and your have passed!');
        END
    ELSE
        BEGIN
            writeln('You failed, your score was: ',aver:2:1);
        END;
    readln;
    writeln('Do you wish to put your scores again?');
    readln(op);
    IF op='y' THEN
        GOTO start;
    ELSE
        writeln('Thank you!');
END.

