pragma solidity ^0.8.0;
contract C {

    uint internal m_x;

    function setX(uint _x) public {
      m_x = _x;
    }
}
```

```solidity
#pragma solidity ^0.8.0;
contract C {
    uint public m_x;
    function setX(uint _x) public {
        m_x = _x;
    }

    function() external payable {
        m_x += 100;
    }
}
```
