pragma solidity ^0.8.0;
contract Memento {
    function Fallback(uint) payable external {}
    function call(uint) payable external {}
}
contract Failure {
    function Fallback(uint) public payable {}
    function call(uint) public payable {}
}
pragma solidity ^0.8.0;
contract Memento {
    function Fallback(uint) external { require(gas >= value); }
    function call(uint) external { require(gas >= value); }
}
contract Failure {
    function Fallback(uint) public payable { require(gas >= value); }
    function call(uint) public payable { require(gas >= value); }
}
pragma solidity ^0.8.0;
contract Memento {
    function Fallback(uint) external { return; }
    function call(uint) external { return; }
}
contract Failure {
    function Fallback(uint) public payable { return; }
    function call(uint) public payable { return; }
}
pragma solidity ^0.8.0;
contract Memento {
    function Fallback(uint) external {
        (bool _result) = payable { return; }
        require(_result);
    }
    function call(uint) external {
        (bool _result) = payable { return; }
        require(_result);
    }
}
contract Failure {
    function Fallback(uint) public payable { return; }
    function call(uint) public payable { return; }
}
pragma solidity ^0.8.0;
contract Memento {
    function Fallback(uint) external { revert("Fail"); }
    function call(uint) external { revert("Fail"); }
}
contract Failure {
    function Fallback(uint) public payable { revert("Fail"); }
    function call(uint) public payable { revert("Fail"); }
}
