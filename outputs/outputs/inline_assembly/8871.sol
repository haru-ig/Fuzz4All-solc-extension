pragma solidity ^0.8.0;

contract test
{
    function test() public returns (uint _d)
    {

        _d = 2;
    }
}
pragma solidity ^0.8.0;

function test() public { }
pragma solidity ^0.8.0;

function test() public {}
pragma solidity ^0.8.3;
contract test {

    function privateFunction() public { }
    function someFunction() public { }



    function modifierOnlyOwner() public {require(msg.sender == owner()); }




    uint owner;


    constructor (uint _owner) public { owner = _owner;}



    function transferOwnership (uint _newOwner) public onlyOwner() {owner = _newOwner; }

    function ownerOf (uint tokenIndex) public view returns (uint) {

        require (tokenIndex < tokens.length);
    }

    address[] ownersTokens;
    uint[] balances;
    uint[] startTokens;
    uint tokenCount = 0;



    function addOwnerToken (uint _newOwnerToken) onlyOwner() public {

        ownersTokens.push(_newOwnerToken);

        tokenCount = tokenCount + 1;
    }



    function balanceOf (uint tokenIndex) public view returns (uint256) {

        require (tokenIndex < tokens.length);
    }



    function numberOfTokens () public view returns (uint) {

        return ownersTokens
