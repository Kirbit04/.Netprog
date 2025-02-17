// See https://aka.ms/new-console-template for more information
/*Console.WriteLine("Hello, World!");
//trying the while loop
int i = 0;
int sum = 0;
while(i<=20){
    Console.WriteLine(i);
    sum += i;
    i++;
}
Console.WriteLine("Sum is: " + sum);
//prompt users to key in upper and lower bounds
Console.WriteLine("Enter the lower bound: ");
int lowerBound = Convert.ToInt32(Console.ReadLine());
Console.WriteLine("Enter the upper bound: ");
int upperBound = Convert.ToInt32(Console.ReadLine());
//displaying the even numbers between the lower and upper bounds
while(lowerBound<=upperBound){
    if(lowerBound%2==0){
        Console.WriteLine(lowerBound);
    }
    lowerBound++;
}
*/
//calculating the gross pay of kenyan workers
int NSSF = 800;
int SHIF = 1250;
int Housing = 675;
int deductions = NSSF + SHIF + Housing;
Console.WriteLine("Your deductions are: " + deductions);
Console.WriteLine("Enter your basic salary:");
int basicSalary = Convert.ToInt32(Console.ReadLine());
Console.WriteLine("Enter overtime hours:");
int overtimeHours = Convert.ToInt32(Console.ReadLine());
int overtimePay = 0;
if (overtimeHours <= 50){
    overtimePay = 300*overtimeHours;
    Console.WriteLine("Your overtime pay is: " + overtimePay);
}
else{
    overtimePay = 350 * overtimeHours;
    Console.WriteLine("Your overtime pay is: " + overtimePay);
}
//calculating the gross pay
int grossPay = basicSalary + overtimePay;
Console.WriteLine("Your gross pay is: " + grossPay);
//calculating the PAYE
if (basicSalary <= 9500){
    Console.WriteLine("Your PAYE is: " + 0*basicSalary);
}
else if (basicSalary > 9500 && basicSalary <= 15999){
    Console.WriteLine("Your PAYE is: " + 0.03*basicSalary);
}
else if (basicSalary > 15999 && basicSalary <= 24999){
    Console.WriteLine("Your PAYE is: " + 0.05*basicSalary);
}
else if (basicSalary > 24999 && basicSalary <= 34999){
    Console.WriteLine("Your PAYE is: " + 0.08*basicSalary);
}
else if (basicSalary > 34999 && basicSalary <= 39999){
    Console.WriteLine("Your PAYE is: " + 0.11*basicSalary);
}
else if (basicSalary > 39999 && basicSalary <= 49999){
    Console.WriteLine("Your PAYE is: " + 0.12*basicSalary);
}
else{
    Console.WriteLine("Your PAYE is: " + 0.14*basicSalary);
}
int Paye = 0;
//calculating the net pay
int netPay = grossPay - (Paye + NSSF + SHIF + Housing);
Console.WriteLine("Your net pay is: " + netPay);