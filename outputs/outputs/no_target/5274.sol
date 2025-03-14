pragma solidity ^0.8.0;
contract MutatedExamples4 {
    event event0(address _from, bytes32 _arg0, uint[] _arg1);
    function getUint16() private pure returns (uint16) {
        uint16 x = 0;
        x += 100;
        return 14;
    }
    function mutate() public returns (uint16) {
        (bytes32 _from,bytes32 _arg0, uint[] memory _arg1) = event0.args;
        event0.return_args(this.id, _from, _arg0, _arg1);
        return x + 50;
    }
}
pragma solidity ^0.8.0;
contract MutatedExamples5 {
    event event0(uint _arg0);
    function getUint16() private pure returns (uint16) {
        uint16 x = 0;
        x += 100;
        return 14;
    }
    function mutate() public returns (uint16) {
        address addr1 = 0;
        (uint _arg0,) = event0.args;
        event0.return_args(18, addr1, _arg0);
        return x + 50;
    }
}
pragma solidity ^0.8.0;
contract MutatedExamples6 {
    event event0(bytes2 _arg0);
    function getUint16() private pure returns (uint16) {
        uint16 x = 0;
        x += 100;
        return 14;
    }
    function mutate() public returns (uint16) {
        (uint256 _arg0,) = event0.args;
        event0.return_args(uint16(uint256(_arg0+1)));
        return x + 50;
    }
}
pragma solidity ^0.8.0;
contract MutatedExamples7 {
    event event0(address _from, uint256 _arg0);
    function getUint16() private pure returns (uint16) {
        uint16 x = 0;
        x += 100;
        return 14;
    }
    function mutate() public returns (uint16) {
        {
            address addr1 = 0;
            (uint256 _arg0,) = event0.args;
            event0.return_args(this.id, addr1, _arg0);
        }
        (uint _arg0,) = event0.args;
        event0.return_args(this.id, _arg0, _arg0);
        return x + 50;
    }
}
pragma solidity ^0.8.0;
contract MutatedExamples
