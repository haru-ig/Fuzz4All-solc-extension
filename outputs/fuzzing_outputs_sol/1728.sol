pragma solidity ^0.8.0;
contract Clobber2 {
    address payable to;
    function f ( bytes memory ) external payable returns (bool){
        to.transfer( msg.value );
        return true;
    }
}
contract Clobber3 {
    address payable to;
    uint256 value;
    function f ( bytes memory ) external payable returns (bool){
        to.transfer( msg.value );
        to.transfer( value );
        return true;
    }
}
contract Clobber4 {
    address payable to;
    uint256 value;
    function f ( bytes memory ) public payable returns (bool){

        require(to.balance >= msg.value);
        to.transfer( msg.value );
        to.transfer( value );
        return true;
    }
}
contract Clobber5 {
    address payable to;
    uint256 value;
    function f ( bytes memory ) payable returns (bool){

        require(to.balance >= msg.value);
        to.transfer( msg.value );
        to.transfer( value );
        return true;
    }
}
