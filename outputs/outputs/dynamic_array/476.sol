pragma solidity ^0.8.0;
contract test11
{
    address x;
    bytes[] myArray;
    bytes[] myOtherArray;
}

pragma solidity >=0.4.22 <0.8.0;
contract test12
{
    address x;
    bytes[] public myArray;
}

pragma solidity >=0.4.22 <0.8.0;
contract test13
{
    bytes[] public myArray;
}

pragma solidity >=0.4.22 <0.8.0;
contract test17
{
    bytes[] public myArray = [0xAA];
}
