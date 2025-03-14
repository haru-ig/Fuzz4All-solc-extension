pragma solidity ^0.8.0;
import "./Test71.sol";
contract Test71Mutator {

    constructor(uint max_num) {
        Test71 instance = new Test71(max_num);
        for(uint i = 0; i < max_num; i++) {
            instance.bar();
        }
    }
}


pragma solidity ^0.8.0;
import "./Test71_redefinition_3.sol";
contract Test71_redefinition_4 {
    function bar() public {
        Test71_redefinition_3 instance;
        instance.foo();
    }
}
