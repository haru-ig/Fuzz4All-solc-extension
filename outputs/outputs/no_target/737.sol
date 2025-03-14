pragma solidity ^0.8.0;
contract MutatedRevertTest {
    uint m_previousResult;
    event ResultReady(uint result);
    function doSomething()
        public
    {
        (uint result, ) = RevertTestSemanticsEquivalent.add0(0, 0);
        emit ResultReady(result);
        uint value1 = result;
    }
}
