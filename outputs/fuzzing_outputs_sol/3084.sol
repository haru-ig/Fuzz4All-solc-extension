pragma solidity ^0.8.0;
contract Example10 {
    struct Example10S {
        uint8 a;
        uint8 b;
    }
    uint8 a;
    uint8 b;
}
contract Example10 {
    struct Example10S {
        uint8 a;
        uint8 b;
    }
    uint8 a;
    uint8 b;
}
contract Example10 {
    struct Example10S {
        uint8 a;
        uint8 b;
    }
    uint8 a;
    uint8 b;
}
contract Example10 {
    struct Example10S {
        uint8 a;
        uint8 b;
    }
    uint8 a;
    uint8 b;
}
contract Example10 {
    struct Example10S {
        uint8 a;
        uint8 b;
    }
    uint8 a;
    uint8 b;
}
contract Example10 {
    struct Example10S {
        uint8 a;
        uint8 b;
    }
    uint8 a;
    uint8 b;
}
contract Example10 {
    struct Example10S {
        uint8 a;
        uint8 b;
    }
    uint8 a;
    uint8 b;
}
contract Example10Receiver {

    fallback() external payable {

        if (msg.value > 0) {

            Example10 storage x = Example10(msg.sender);
            x.b = msg.value;
        }
        emit Example10Received();
    }
    function Example10Received() virtual internal {}
}
contract Example10Delegate {
    Example10 delegateExample10;
    Example10Delegate(Example10Example10 storage example10DelegateExample10) {
        delegateExample10 = example10DelegateExample10;
    }
    function doWork(address _addr10) public {
        delegateExample10.doWork(_addr10);
    }
}

pragma solidity ^0.8.0;
contract Example5 {
    function doWork(Example10 storage _example10) public {
        Example10 storage example10 = _example10;
        example10.b = 10;
    }
}
contract Example4 {
    Example10 delegateExample10;
    Example4Example10Example5 delegateExample5;
    Example4(Example10Example10 storage example10DelegateExample10Example5) {
        delegateExample10 = example10DelegateExample10Example5;
        delegateExample5 = delegateExample10Example5;
    }
    function doWork(address _addr5) public {
        delegateExample5.doWork(_addr5);
    }
}
/* Please create another contract which is
