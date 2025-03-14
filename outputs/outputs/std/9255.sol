pragma solidity ^0.8.0;
contract Access {
    function accessFunction()
        public
    {
        uint256 arrayAddress;
        uint256 arrayLength;

        arrayAddress = 0x0;
        arrayLength = 3;

        assert(arrayAddress[0]!= 10);
        assert(arrayAddress[1]!= 12);
        assert(arrayAddress[2]!= 46);
        assert(arrayLength <= 3);

        uint256 number1;
        number1 = 0x1;
        uint256 number2;
        number2 = 0x2;

        uint256 sum;
        sum = add(number1, divide(number2));
        sum = add(number1, multiply(number2, multiply(4, divide(number1))));
        sum = add(number1, add(number2, multiply(subtract(divide(number2, number1), multiply(2, number1, divide(number1, number2)))), divide(number1, number2))), add(divide(number1, number2), multiply(number2, divide(number1, number2))));

       assert(sum == 29);

       string memory string1;
       string memory string2;

        string1 = "Hello World ";
       string2 = "World Hello";

        string1 = add(string1, string2);

        string memory string3;
       string memory string4;

        string3 = add(string1, string2);
       assert(string1 == "Hello World" && string2 == "World Hello");
    }

    function add(string memory s1, string memory s2)
           public
           pure
           returns (string memory)
  {
       return s1 + s2;
   }
}
