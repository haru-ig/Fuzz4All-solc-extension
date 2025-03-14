pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    uint256 private _authorPrice;
    mapping (uint8 => address) private _author;
    constructor(uint256 initialAuthorPrice) public {
        _authorPrice = initialAuthorPrice;
    }
    function addAuthor(address address, string memory name, uint8 type) public {
        require(address!= 0x0 && name.length!= 0);
        delete _author[type];
        _author[type] = address;
    }
    function getAuthor(address holder) public view returns(uint8) {
        if (_author[holder].balance == 0) return 0;
        return _author[holder].balance.value(address(this).balance)();
    }
}

pragma solidity ^0.8.0;
import "contracts/SemanticallyEquivalent.sol";
contract SemanticallyEquivalent {
    uint256 private _authorPrice;
    mapping (uint8 => address) private _author;
    constructor() public {
        _authorPrice = 0;
    }
    function getSalePrice() public view returns(uint256) {
        return _authorPrice;
    }
}
