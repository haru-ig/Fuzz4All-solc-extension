pragma solidity ^0.8.0;
contract C {
    uint internal m_x;
    function setX() public pure {
        m_x = 5;
    }
}
```

Now, we'll cover another useful function with inline assembly: the transfer function.
