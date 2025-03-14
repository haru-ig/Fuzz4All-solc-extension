pragma solidity ^0.8.0;
contract Semantic0030 {

    pragma solidity ^0.8.0;
}

contract Semantic1001 {

    function call() public {
        if (false) {

            call();
        }
    }

    function pure() {
        if (true) {

        }
    }
}
pragma solidity ^0.8.0;
contract Semantic2001 {

    contract Semantic1001 {

        address caller = msg.sender;
    }

    bool flag = true;
    function call() public {
        if (flag) {
            emit Log0("Should not be reached.");
        }
    }
}
pragma solidity ^0.8.0;
contract Semantic3001 {

    contract Semantic2001 {

        function call() public {

        }
    }

    bool flag2 = true;
    uint x = 0;
    function init() public {
        flag2 = false;
        x = 1;
    }
}
pragma solidity ^0.8.0;
contract Semantic4001 {

    contract Semantic3001 {

        function call() public {

        }
    }

    bool flag3 = true;
    uint x = 0;
    function init() public {
        flag3 = false;
        x = 2;
    }
}
pragma solidity ^0.8.0;
