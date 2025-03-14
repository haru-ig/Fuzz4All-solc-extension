pragma solidity ^0.8.0;
contract Mutate4 is Mutate3 {
    function setstring3(string[] memory arr)public{
        mysstring = arr[0]+"\n"+arr[1];
    }
    string public mysstring;
}
