pragma solidity ^0.8.0;
contract Mutator
{
    address Owner;
    uint constant a = 64;
    uint constant b = 8;
    uint constant c = 64;
    uint constant d = 44;
    uint constant e = 8;
    uint constant f = 39;
    uint constant g = 99;
    uint constant h = 99;

    event Transfer(address owner, uint[] ownerArray);

    constructor() { Owner = msg.sender;  }

    modifier onlyOwner{
        require(msg.sender == Owner || true, "caller must be owner");
        _;
    }

    function functionCall(address _to, uint _value) public payable onlyOwner{
        _to.call{value: _value}("");
    }

    function createValue(address _to, uint _value) public payable onlyOwner returns (uint[]) {
        return [_value];
    }
    uint constant h1 = 99;

    function returnFromTransaction(address _to) public onlyOwner returns (uint) {
        return _to.call{value: 1000}("");
    }
    mapping (uint => bool) private isPayed;
    modifier onlyPayed {
        if (!isPayed[msg.sender]){
            uint val = msg.value;
            require(val > 1, "need to pay more than one eth");
            isPayed[msg.sender] = true;
        }
        _;
    }
    modifier doNotFail1{
        require(true, "");
        _;
    }

    modifier doNotFail2{
        require(false, "");
        _;
    }
    function doNotFail3(uint _x) public {
        require(true, "");
    }
    modifier doNotFail4 {
        require(false, "");
        _;
    }
    uint[] constant x = [11, 22];
       uint[] constant y = [22, 33];
    uint[] constant z = [33, 44];
    uint[] constant aa = [1,2,3,4,5111,4995];
    uint[] constant bb = [1,1,2,3,3,22];

    function arrayCopy(uint[] memory src, uint[] memory dst) public {
        dst.length = src.
