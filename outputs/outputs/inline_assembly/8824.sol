pragma solidity ^0.8.0;
contract Test
{
    uint constant int_max = 2**36 - 1;
    uint x = 2**36 - 1;
    uint[2] private a;
    uint z = x / 37;
    function test() public {
        a[1] = x;
        x = 60;
        safeAdd(a[0], a[1] / 2);
    }
    function safeAdd(uint _a, uint _b) returns (uint o) {
        o = _a + _b;
        require(_a >= 0 && _b >= 0 && _a + _b < 2**256);
        return o;
    }
}

pragma solidity ^0.8.0;
contract GasManager
{

    uint constant int_max = 2**36 - 1;
    uint16 constant gas_unit=65536;

    address manager;
    address constant owner = msg.sender;
    uint gas_used=0;

    event LogGasUsed(uint, uint, uint, uint);
    event LogGasUsedEtherTo(address, uint, uint, uint);
    event LogGasCost(uint,uint);


    constructor(uint256 _gas_cap) public {
        manager = msg.sender;
        manager.transfer(gas_cap,_gas_cap);
        gas_cap_ = _gas_cap;}


    function getGasUsed() public pure returns(uint256 _gas_used, uint _gas_remaining){

        return (gas_used,gas_cap_ - gas_used);
    }

    function getGasUsedEther() public view returns(uint _gas_used, uint _gas_remaining, uint _gas_price){
        if (address(this).balance < 0.001 ether) revert();

        _gas_used = gas_used;
        _gas_remaining = gas_cap_ - gas_used;

        uint gas_price = gasCost();
        _gas_price = gas_price;
    }

    function getOwner() public pure returns(address _owner){
        return owner;
    }

    function getGasPrice() public pure returns(uint gas_price){
       uint price=Web3.eth.getPrice();
       uint256 f=1 wei;
       uint256 a=f*price;
       uint256 a1=a/-1;
       uint256 f1=a1/-1;
       uint _f=f1*10e9;
       uint256 gas_price
