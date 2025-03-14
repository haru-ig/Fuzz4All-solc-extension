pragma solidity ^0.8.0;
contract Mutate2_updated {
    string public mystring;
    constructor()public {






        Mutate2_previous myObject3 = new Mutate2_previous();
        string memory mystring2 = myObject3.getstring();

        address myObject4 = myObject3.getaddress();
        Mutate2_updated myObject42 = new Mutate2_updated();
        myObject42.myaddress = myObject4;
        myObject42.setstring1(myString);
        mystring2 = myObject42.getstring();


    }
}
