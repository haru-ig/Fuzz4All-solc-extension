pragma solidity ^0.8.0;
<fim_middle>interface Bar {

    modifier onlyowner {
        require(owner == msg.sender, "foo", "only owner allowed");
        _;
    }
}
Bar bar;
contract A {
    modifier nope {
        throw;
    }
}
contract B is A, Bar {
    function foo() nope internal {
    }
    function foo() nope external { }
}
contract C is Bar {
    function foo() nope external { }
}
