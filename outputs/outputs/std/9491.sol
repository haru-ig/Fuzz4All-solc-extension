pragma solidity ^0.8.0;
contract Mutated4 {
    string public Mystring;
    function print() public {
        Mystring = Mutated3.Mystring;
        print(Mystring);
    }
}
contract Mutated5 {
    string public mystring;
    function setstring(string memory newstring)public{
        mystring = newstring;
    }
    function modify()public {
        Mutated4.print();
        mystring = Mutated3.mystring;
    }
}
contract Mutated6 {
    string public mystring;
    function setstring(string memory newstring)public{
        mystring = newstring;
    }
    function mutate()public {

     mystring = Mutated4.mystring;
    }
}
contract Mutated7 {
    string public mynumberstring;
    function setint(uint number) public {
        mynumberstring = mynumberstring + number.toString();
    }
    function print() public {
        Mutated6.setint(uint(8)) ;
        print(uint(8));
    }
}
