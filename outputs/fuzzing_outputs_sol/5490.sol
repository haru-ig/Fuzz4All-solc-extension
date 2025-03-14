pragma solidity ^0.8.0;
contract successcall97
{
    function f8() external {
        receive() external;
    }
}
contract successcall95
{
    function f8() public {
        receive() public;
    }
}
contract successcall94
{
    function f8() payable external {
        receive() payable;
    }
}
contract successcall93
{
    function f8() private external {
        receive() private;
    }
}
contract successcall92
{
    function f8() external {
        receive() external;
    }
}
contract successcall91
{
    function f8() private external {
        receive() private;
    }
}
contract successcall90
{
    function f8() public external {
        receive() public external;
    }
}
contract successcall98
{
    receive() external {
        if (msg.value!= 28) {
            revert();
        }
    }
}
contract successcall99
{
    receive() public external {
        if (msg.value!= 28) {
            revert();
        }
    }
}
contract successcall100
{
    receive() private external {
        if (msg.value!= 28) {
            revert();
        }
    }
}
contract successcall101
{
    receive() external {
        if (msg.value!= 28) {
            revert();
        }
    }
}
contract successcall102
{
    receive() public external {
        if (msg.value!= 28) {
            revert();
        }
    }
}
contract successcall103
{
    receive() private external {
        if (msg.value!= 28) {
            revert();
        }
    }
}
contract successcall199
{
    receive() external payable {
        EtherReceiver.x();
        if (msg.value!= 28) {
            revert();
        }
        bytes memory empty;
        empty.length;
    }
}
contract successcall200
{
    receive() public external payable {
        EtherReceiver.x();
        if (msg.value!= 28) {
            revert();
        }
        bytes memory empty;
        empty.length;
    }
}
contract successcall201
{
    receive() private external payable {
        EtherReceiver.x();
        if (msg.value!= 28) {
            revert();
        }
        bytes memory empty;
        empty.length;
    }
}
contract successcall96
{
    receive() external payable {
        bytes memory empty;
        empty.length;
    }
}
