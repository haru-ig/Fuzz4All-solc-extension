pragma solidity ^0.8.0;
abstract contract MyData {
     struct MyData {
        uint[3] bbb;
     }
}

pragma solidity >=0.7.0 <0.9.0;
contract MyExample {
     IERC165 public interfaceId;
     uint[3] public data;

     function MyExample() {
          data[0] = 7;
          MyData storage db = MyData(data);
          bytes4 iface = type(IERC165).interfaceId;
          MyData memory bd = db.bbb[1];
          bytes4 bdIface = bd.IERC165();
     }
}
  ```

## Reentrancy

A contract in Solidity can be reentered by external calls from other contracts. As a result the contract needs to be self-contained and cannot have any other dependencies, which means that the contract can behave properly in the case of reentrancy when the contract being reentered in does not rely on other contracts being accessed. The following examples and tutorials will explore reentrancy better over the next two weeks.

The following code example shows the first method of reentrancy:
```solidity


pragma solidity ^0.8.0;

contract Context {
    function _msgSender() internal view virtual returns (address payable) {
        bytes32 slot := keccak256(abi.encodePacked(address(this), type(MsgSender).selector));
        bytes32 returnData;
        assembly {
            returnData := sload(slot)
        }
        return address(uint160(returnData));
    }

    struct MsgSender {
        address _address;
        uint256 _amount;
    }

    function payout() public payable {
        address payable sender = _msgSender();
        emit Log(sender, _msgSender());
        for (uint256 _ = 0 ; _ < 10000 ; _ = _ + 1) {
             try payable(sender).transfer(_msgSender().transfer(_amount)) {} catch (error) {
                 print(uint256(uint8(error)));
             }
        }
        emit Log(sender, _msgSender());
    }

    event Log(MsgSender sender, MsgSender to);
}

mapping (uint256=>uint256) private _balances;
mapping (address=>uint256) private _allowed;

contract Test {
    using Address for address payable;
    using
