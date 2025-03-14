pragma solidity ^0.8.0;
import "@openzeppelin/contracts-upgradeable/address/AddressUpgradeable.sol";
contract Mutator
{
    address public owner;
    address payable public paybackAddress;
    uint public A;
    uint public B;

    constructor()
    {
        A = 15;
        B = 5;
        owner = msg.sender;
        paybackAddress = msg.payable;
    }

    modifier onlyOwner {
        require(
            _msgSender() == owner,
            "You must be the contract owner to access this function"
        );
        _;
    }

    function increaseA(uint x)
        public
        payable
        onlyOwner
        override
    {
        B++;
    }

    function increaseB(uint x)
        public
        payable
        onlyOwner
        override
    {
        A = A + B * x;
    }

    function subtractA(uint x) public payable onlyOwner override {
        B = x;
    }

    function subtractB(uint x) public payable onlyOwner override {
        if (A == x) revert();
        A = A - B;
    }

    function multiplyB(uint x) public payable onlyOwner override {
        if (A == 0) revert();
        B = A / x * x * B;
    }


    function _verify() public view returns (uint, uint) {
        return (A, B);
    }

    function log() public {




        emit Log(A, B);
    }
}
