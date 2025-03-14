pragma solidity ^0.8.0;
contract LetsMe {

}
pragma solidity ^0.8.0;
contract NotLetsMe {
    function call1() public {}
    function call2() public {
        if (false) {
            call1();
        }
    }
}
pragma solidity ^0.8.0;
contract UsesLetsMe {
    LetsMe internal immutable letsMe;
}
pragma solidity ^0.8.0;
contract LetsMeCalls {
    usesLetsMe public immutable letsMe;
    constructor (LetsMe memory letsMe) {
        this.letsMe = letsMe;
    }
    function call1() public {
        if (false) {
            this.letsMe.doIt();
        }
    }
    function call2() public {
        if (false) {
            call1();
        }
    }
}
contract UsesLetsMeCalls {
    LetsMeCalls internal immutable letsMeCalls;
    constructor (LetsMeCalls memory letsMeCalls) {
        this.letsMeCalls = letsMeCalls;
    }
    function call3() public {
        if (false) {
            call2();
        }
    }
    function call4() public {
        if (false) {
            call3();
        }
    }
}
pragma solidity ^0.8.0;
import {Constant, NonConstant} from './Constant.sol';
contract ConstantAndNonConstant {
    bool internal constant doesDoIt = true;
    uint8 constant nonConstant = 2;
    uint8 constant nonConstant2 = 3;
   uint8 constant nonConstant3 = 4;
    uint8 _internal1 = 1;
}
pragma solidity ^0.8.0;
contract UseConstantAndNonConstant {
    ConstantAndNonConstant internal constant constantAndNonConstant = ConstantAndNonConstant({doesDoIt:true, nonConstant:2, nonConstant2:3, nonConstant3:4, _internal1:1});
    modifier check() {
        if (!constantAndNonConstant.doesDoIt) revert();
        _;
    }
}
pragma solidity ^0.8.0;
import {LetsMe, Constant, NonConstant, UseConstantAndNonConstant} from './LetsMeCalls.sol';
contract LetsMeCalls2 {
    usesLetsMe internal immutable letsMe;
    constructor (LetsMe memory letsMe) {
        this.letsMe = letsMe;
    }
    function call1() public {
        if (false) {
            this.letsMe.doIt();
            this. letsMe.doIt();
        }
    }
    function call2() public {
        if (false) {
            call1();
        }
    }
}
pragma solidity ^0.8.0;
import {LetsMeCalls2} from './LetsMeCalls2.sol';
contract UsesLetsMeCalls2 {
    LetsMeCalls2 internal immutable letsMeCalls2;
    constructor (LetsMeCalls2 memory letsMeCalls2) {
        this.letsMeCalls2 = letsMeCalls
