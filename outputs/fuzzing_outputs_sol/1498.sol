pragma solidity ^0.8.0;
contract SemanticsMutation {
}
{% endhighlight %}

The semantic mutation example program and the semantics mutation documentation can be found in the directory `./test/semantics_mutation` of the [SemanticMutation repo](https:

# Testing

The semantic mutation library tests can be run using `yarn test`, except for the `test/semantics_mutation/SimpleContractTest.sol`. Instead, the tests for the semantics mutation can be run from the command line using the command `yarn test-semantic-mutation`. The results of the tests cannot be directly compared to the golden files of the semantics mutation in the repo. To generate such a test set, you can run the testsuite with the command `./test/semantics_mutation/semantic_mutation.ts`. The test files contain data that describes the semantics of the new version and the golden files with correct behavior.
