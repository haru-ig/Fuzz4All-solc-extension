pragma solidity ^0.8.0;
fallback() external payable {
    console.log("Fallback");
}
receive() external payable {
    console.log("Receive");
}
pragma solidity ^0.8.0;
interface B {}
interface F {}
interface C {
    receive () external payable {
        console.log("Success.");
    }
    function f() external payable;
}

pragma solidity ^0.8.0;
contract FallbackA is B {}
contract FallbackB is B, A {
    fallback() external payable {
        console.log("Success");
    }
}

pragma solidity ^0.8.0;
contract FallbackC is B, A {
    fallback() external {
        console.log("Success");
    }
}
pragma solidity ^0.8.0;
contract FallbackD {
    fallback() public {
        console.log("Success");
        fallback();
    }
}
contract FallbackE {
    receive() public payable {
        console.log("Success");
    }
}

pragma solidity ^0.8.0;
contract FallbackF {
    fallback() external payable {
        console.log("Success");
    }
    receive () external payable {
        console.log("Receive");
    }
}
