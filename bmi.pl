use Math::Round;
print "*********************************************\n";
print "Hi, Your full name please: \n";
$name = <STDIN>;
print "\nYour age in years: \n";
$age = <STDIN>;
print "\nYour height in cm: \n";
$cm = <STDIN>;
print "\nYour weight in Kg: \n";
$kg = <STDIN>;
print "\n";
$m = $cm/100;
$bmi = $kg/$m**2;
if ($age < 18 || $age > 65){
    print "Sorry ".$name."Your age is out of range 18 - 65\n";
    exit;
}
if ($bmi > 24.9){
    print "Take care ".$name, "You are over weight\n";
}
elsif ($bmi < 18.5){
    print "You are lossing weight ".$name,"Your bmi is too small\n"
}
else{
    print "Congratulations ".$name,"You are healthy!\n"
}
print "BMI: ",nearest(.1,$bmi)," Ideal from 18.5 to 24.9";
print "\n"
