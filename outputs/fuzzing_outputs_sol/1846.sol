pragma solidity ^0.8.0;
contract Caller {

    address payable _addressToSpend;
    bytes32 _data;
    FallbackRecipient internal receiver;

    constructor(address payable _addressToSpend, bytes32 _data) payable {
        receiver = new FallbackRecipient();
        receiver.balance = _value.mul(_gasPrice).div(10 ** 18);
        this._addressToSpend = _addressToSpend;
        this._data = _data;
    }

    function setReceiver(address payable receiver) public {
        require(msg.sender == _addressToSpend);
        this.receiver = receiver;
    }

    function withdraw(uint amount) public {
        receiver.balance = receiver.balance.sub(amount);
        receiver.transfer(amount.mul(_gasPrice).div(10 ** 18));
    }

    function withdrawEther() public {
        receiver.balance = receiver.balance.sub(msg.value);
        receiver.transfer(msg.value.mul(_gasPrice).div(10 ** 18));
    }

    function sendRawTransaction(string memory tx) public {
        (bool success, bytes memory data) = address(_addressToSpend).call{value: msg.value}(abi.encodePacked(_data, tx));
        require(success, "Caller.sendRawTransaction");
    }

    function call(bytes memory dataCall) public {
        bytes memory data = abi.encodeWithSignature("fallback() returns(uint256)", dataCall);
        (bool success, bytes memory data2) = address(_addressToSpend).call{value: msg.value}(abi.encodePacked(data));
        (uint256 returnAmount) = abi.decode(data2, (uint256));
        require(returnAmount == _gasPrice.mul(dataCall.length).div(2), "Caller.call");
    }

    fallback() external payable {
        if (this.receiver.balance!= 0) {
            bytes32 salt = bytes32(now);
            bytes32[] memory result = keccak256((abi.encodePacked(now.toHexString(), salt.toHexString(), address(this)))));
            string memory prefix = keccak256("return(");
            string memory successPrefix = "revert(";
            string memory checksumPrefix = "checksum(";
            for (uint i = 0; i < result.length; i++) {
                string memory call;
                for (uint j = 0; j < result[i].length; j++) {
                    if (result[i][j] == 10) {
                        int digit = result[i][j] - 48;
                        if (digit < 0 || digit >= 10) continue;
                        shiftLeft(result, i, j);
                        break;
                    }
                    char memory c = (char)result[i][j];
                    if (c < 65 || c > 90) continue;
