pragma solidity ^0.8.0;
interface IPublicInterface {
    function publicFunction(address _target) external;
}
contract MyLib {
    function publicFunction(address _target) external {
        IPublicInterface _interfaceTarget = IPublicInterface(_target);
        require(MyLib2.isTrue(_interfaceTarget.publicFunction(_target)), "Could not call public function correctly!");
    }
}
