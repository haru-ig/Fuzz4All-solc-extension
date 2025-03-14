pragma solidity ^0.8.0;
contract MixedContactsExample {
    uint8 a = 0;
    uint8 b = 1;
    uint8 c = 1;
    uint8 d = 2;
    uint256 g;
    uint256 x;
    uint256 y;
    string z;
    uint256 w;
    mapping(address => string) private _contacts;

    uint8 private constant ZERO256 = 0;

    function MixedContactsExample() {
        emit ELog(2);
        a = 1;
            g = type(uint256).max;
            x = toUint256Max();
            y = ZERO256;
            z = "Hello";
            w = x || 0;
            for (var i = 0; i < 13; i++) {
                d = d << 1;
            }
        emit ELog(5);
    }

    function toUint256Max() internal pure returns (uint256) {
        return 2**256 - 1;
    }

    function changeName(string memory _newName) public pure {
        emit ELog(3);
        _contacts[msg.sender] = _newName;
    }

    function changeContact(address _newAddress, string memory _newName) public pure {
        _contacts[_newAddress] = _newName;
    }

    function sendMoneys(uint256 _value, address _newAddress) public {
        emit ELog(4);
        require(y!= 0, "can't send zero coins");
        require(toUint256Max()!= x, "can't send all coins");
        changeContact(_newAddress, _contacts[msg.sender]);
        uint256 currentBalance = _contacts[_newAddress];
        require(currentBalance + _value >= 0, "insufficient funds");
        changeName(_contacts[_newAddress]);
    }
}
