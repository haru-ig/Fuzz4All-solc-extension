pragma solidity ^0.8.0;
contract ModeratedCaller {
    address payable public owner;
    address payable public operator;


    constructor<fim_suffix>n `constructor`
        is only executed when creating a contract using a constructor call. */
    constructor () { }


    event BeforeDeployContract (bytes  );

    event AfterDeployContract (bytes  );


    function constructorHook (address   _owner) public {
        assert (msg.sender == _owner);
        emit BeforeDeployContract (msg.data);
    }


    function afterHook (address   _origin) public {
        assert (msg.sender == _origin);
        emit AfterDeployContract (msg.data);
    }
}
