pragma solidity ^0.8.0;
contract Mutate2 {
    uint[] public myarray;
    function setmyarray1(uint[] memory newarray)public{
        myarray = newarray;
    }


}

pragma solidity ^0.8.0;
contract Mutate2 {
    uint constant myconst = 1;
    uint[99] public myarray;
    uint public immutable mymutable;
    function setmyarray2(uint[99] memory newarray)public{
        myarray = newarray;
    }

}

pragma solidity ^0.8.0;
contract Mutate2 {
    uint private myconst;
    uint public immutable mymutable;
    uint[99] public myarray1;
    uint[3] public myarray2;
    uint[20] public myarray3;
    uint[5] public myarray4;

    function setmyarray2(uint[99] memory newarray1, uint[3] memory newarray2, uint[20] memory newarray3)public{
        myarray1 = newarray1;
        myarray2 = newarray2;
        myarray3 = newarray3;
    }


}
