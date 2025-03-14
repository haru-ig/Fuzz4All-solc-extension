pragma solidity ^0.8.0;
interface IERC165 {
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

pragma solidity ^0.8.0;
contract ExampleInterface4 {
    modifier onlyInterface {
        require(IERC165(msg.sender).supportsInterface(0x01ffc9a7), "onlyInterface");
        _;
    }
    constructor() {
    }
    function funcE4() onlyInterface external {
    }
    function funcE56() onlyInterface external {
    }
    function funcE59(uint8 _a) onlyInterface external {
    }
    function funcE60() onlyInterface external {
    }
    function funcE61() onlyInterface external {
    }
    function funcE63() all external {
    }
}

pragma solidity ^0.8.0;
interface IERC165 {
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

pragma solidity ^0.8.0;
contract ExampleInterface4 {
    event Event1(string a);

    function funcE4() public {
        emit Event1("Event 1");
    }
    function funcE5(uint8 _a) public {
        emit Event1(iToStr12(_a));
    }
    function funcE6() external pure {
        emit Event1(iToStr12(uint8(1111)));
    }
    function funcE7() external pure {
        emit Event1(iToStr12(uint8(1111 + 1)));
    }
    function funcE8() external pure {
        emit Event1(iToStr12(uint8(1111 + 2)));
    }

    function funcE9() external pure {
        emit Event1("Event 1");
    }
    function funcE10() external pure {
        emit Event1("");
    }
    function funcE11() external pure {
        emit Event1(uint8ToString(uint8(111
