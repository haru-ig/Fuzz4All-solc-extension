pragma solidity ^0.8.0;
contract
{
    bytes public secrettext;
    function setsecrettext(bytes memory newtext)public
    {
        secrettext = newtext;
    }
    function getsecrettext() private
    {
        return secrettext;
    }
}
