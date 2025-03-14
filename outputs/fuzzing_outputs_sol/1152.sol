pragma solidity ^0.8.0;
contract SimpleMutation2 {
    function multipleEvents() public {
        emit Simple2(1, 2);
    }
    function multipleEventsTwoTimes() public {
        emit Simple2(1, 2);
        emit Simple2(3, 4);
    }
    function multipleEventsAllTheTime() public {
        emit Simple2(1, 2, 3, 4);
    }
    function multipleEventsNoParam() public {
        emit Simple1();
        emit Simple2();
        emit Simple1();
        emit Simple2();
        emit Simple1();
        emit Simple2();
    }
    event Simple2(uint, uint);
    fallback() external {
    }
}
