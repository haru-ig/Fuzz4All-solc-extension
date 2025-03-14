pragma solidity ^0.8.0;
struct Money {
    string addr;
    uint amount;
    address payable owner;
    address payable[] recipients;
    uint8 _data;
    uint amountOfReceivers;

    event Mined(uint value);
}
contract MoneyContract {
    Money[] _addresses;
    uint256 _nextAddressID;

    function getMoneyCount() public view returns(uint256) {
        return _addresses.length;
    }

    function payMoneyToAddress(
        uint amount,
        uint256 index)
        public {
        _addresses[index].owner.transfer(amount);
    }

    constructor() {
        for (uint i = 0; i < _addresses.length; i++) {
            uint amount = uint(uint256(web3.random.random()) << 1)
                | uint(uint256(web3.random.random()) << 62);
            _addresses.push(
               Money({
                    addr: indexToAddress(i),
                    amount: amount,
                    owner: msg.sender,
                    _data: uint8(uint256(i) << 64)
                }));
        }

        _nextAddressID = getMoneyCount();
    }

    function mintNewMoney() public {
        uint amount = uint(uint256(web3.random.random()) << 1)
            | uint(uint256(web3.random.random()) << 62);
        _addresses.push(
            Money({
                addr: newAddress(),
                amount: amount,
                owner: msg.sender,
                amountOfReceivers: 0
            }));
        _nextAddressID = _addresses.length;
    }


    function getMoneyAddr(uint index) public view returns (address) {
        return _addresses[index].addr;
    }

    function getMoneyAmount(uint index) public view returns (uint256) {
        return _addresses[index].amount + _addresses[index].owner.balance;
    }

    function getMoneyOwner(uint index) public view returns (address) {
        return _addresses[index].owner;
    }

    function getMoneyRecipients(uint index) public view returns (uint256) {
        return _addresses[index].recipients.length;
    }

    function getMoneyReceived(uint index) public view returns (uint256) {
        return _addresses[index].recipients[0].balance;
    }


    function getMoneyData(uint index) public view returns (uint) {
        return _addresses[index]._data;
    }

    function getMoneyAmountOfReceivers(uint256 index) public view returns(uint, uint8) {
        return (_addresses[index].recipients.length, _addresses[index]._data);
    }

    function indexToAddress(uint index) public view returns(address) {
        return uintToAddress(uintToString(uint256(index << 14)));
    }


    function uintToAddress(string calldata str) public pure returns(address){
        bytes memory bytesAddress = bytes(str);
        bytesAddress[22] = '0';
        bytesAddress[23] = 'x';
        return address(uint160(uint256(
