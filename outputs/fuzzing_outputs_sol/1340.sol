pragma solidity ^0.8.0;
contract Contract {
    function call_Caller_01()
        public
        returns (
            uint,
            address
        ) {
        address foo;
        address bar;
        return (
            0,
            foo
        );
    }
    function call_Caller_02()
        public
        returns (
            uint,
            address
        ) {
        address foo;
        address bar;
        return (
            1,
            foo
        );
    }
    function call_Caller_03()
        public
        returns (
            uint,
            address
        ) {
        address foo;
        address bar;
        return (
            2,
            foo
        );
    }
}
