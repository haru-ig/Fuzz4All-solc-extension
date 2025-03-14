pragma solidity ^0.8.0;
contract Example {
    address payable target;
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    constructor () payable {
        target = payable(_msgSender());
    }
    function set (uint _value) public {
        target.transfer(_value);
    }
    function setMutated() public {
        emit Sets(_msgSender(), ZERO, ZERO, ZERO);
    }
}
pragma solidity ^0.8.0;
contract ExampleWithMemory {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    constructor () {
        set(ZERO, ZERO, ZERO, ZERO);
    }
    function set (uint _a, uint _b, uint _c, uint _d) public {
        emit Sets(address(this), _a, _b, _c);
    }
    modifier onlyCallers {
        require(
            msg.sender == address(this),
            "Only contract can call this function."
        );
        _;
    }
    function setMutated() public onlyCallers {
        emit Mutated();
    }
}
contract Examples {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    constructor () public {
        ExamplesWithMemory(_msgSender()).setMutated();
    }
    function set (uint _a, uint _b, uint _c, uint _d) public {
        emit Sets(address(this), _a, _b, _c);
    }
}
contract ExamplesWithMemory {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    constructor (address user) public payable {
        if (user == address(Examples)){
            set(ZERO, ZERO, ZERO, ZERO);
        }
        else{
            set(ZERO, ZERO, ZERO, ZERO);
        }
    }
    function set (uint _a, uint _b, uint _c, uint _
