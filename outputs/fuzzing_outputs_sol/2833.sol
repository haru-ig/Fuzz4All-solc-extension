pragma solidity ^0.8.0;
interface Upgrader1 {
    function migrate() external returns (address);
    function upgrade() external;
}
contract Upgrader2 is Upgrader1 {
    function migrate() public returns (address) {
        Upgrader1(this).upgrade();
        return address(0);
    }
}
pragma solidity ^0.8.0;
contract Migrations is Upgrader1 {
    function newContractAddress(address _contractAddress) public returns (address);

    function newContractInstance(address _contractAddress, uint _number) public returns (address);

    function revertWithReturn(uint _amount) public {
        if (_amount > uint(0)) {
            address addr = upgradeTo(_contractAddress, _amount);
            if (addr!= address(0)) {}
        } else {
            address addr = upgradeTo(_contractAddress);
            if (addr!= address(0)) {}
        }
    }

    function migrate() public payable {
        address newContractAddress = newContractAddress(_contractAddress());
        if (address(0) == newContractAddress) revert();

        address newContractInstance = newContractInstance(newContractAddress, 1234);
        if (address(0) == newContractInstance) revert();


        address addr = address(0);
        uint amount = uint(msg.value);
        fallback(addr, amount);
    }

    function _contractAddress() internal view returns (address) {
        return address(0x556623E37cBDceAe17DD4708D632473f694E8D75);
    }

    fallback () external payable {
        revert();
    }

    function upgradeTo(address _newContractAddress, uint _amount) public payable upgradeTo(address _newContractAddress) returns (address) {
        address addr = newContractInstance(_newContractAddress, _amount);
        if (address(0) == addr) return address(0);
        require(address(0)!= addr);

        return addr;
    }

    function upgradeTo(address _newContractAddress) public payable upgradeTo(address _newContractAddress) returns (address) {

        address addr = newContractInstance(_newContractAddress, 0);
        if (address(0) == addr) return address(0);
        return addr;
    }
}
