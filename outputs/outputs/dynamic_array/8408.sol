pragma solidity ^0.8.0;
contract mutantSolidityB50000ToB899999999 {
    address public owner;
    constructor() {
        owner = msg.sender;
    }
    function destroy() public {


        owner.transfer(address(this).balance);
    }
}
