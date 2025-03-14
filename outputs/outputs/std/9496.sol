pragma solidity ^0.8.0;
import "./Mutate2.sol";
contract Mutate_previous {
    Mutate2 storage mutatedstorage;
    address public payer;
    function setAddress1(address payable addr)public{
        payer = addr;
    }
    function initMutate()public{
        mutatedstorage = Mutate2(0xbA7c44048550E02543c0CCc97cAE867C50F25320);
    }
    function setstring3(string memory newstring) public{
        mutatedstorage.setstring1(newstring);
    }
}
