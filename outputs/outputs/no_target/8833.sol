pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated {
    uint constant public _Amount57 = 535860157306997486331927576123922;
    uint constant public _Value59 = 12345;
    event Mint8 (uint amount, uint value);
    function getBalance() public view returns (uint balance) {
        balance = address(this).balance;
    }
    function mint (uint amount) public returns (bool success) {
        require(amount <= _Amount57);
        emit Mint8(amount, _Value59);
        return true;
    }
}

pragma solidity ^0.8.0;
contract EquivalentABIv2WithABIv2SemanticsAreMutated {
    uint constant public _Value58 = 12345;
    event A (uint value, uint amount);
    event B (uint value, uint amount);
    event C (uint amount);
    function getBalance() public {
        A(_Value58, _Amount57);
        B(_Value58, _Amount57);
    }
    function mint (uint amount) public returns (bool success) {
        C(amount);
    }
}

pragma solidity ^0.8.0;
contract EmptyABIv2WithABIv2SemanticsAreMutated {
    event A (string name);
    function getBalance() public view onlyOwner {
        A("myName");
    }
}
