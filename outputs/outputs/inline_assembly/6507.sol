pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample70 {
    uint public d;

    function setD() public {
        d = 0;
    }
}
 <fim_middle>contract MixedContactsExample71 {
    uint public d;

    event E();

    function setD() public {
        d = 0;
        emit E();
        E();
    }
}
contract MixedContactsExample79 {
    uint public d;

    event E();

    function setD() public {
        d = 0;
        emit E;
        E;
    }
}
contract MixedContactsExample89 {
    uint public d;

    event E();

    function setD() public {
        d = 0;
        payable calldata x = address(this).balance;
        emit E;
        E;



        d = 0;
        emit E;
        E;
    }
}
