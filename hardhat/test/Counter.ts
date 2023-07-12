import { expect } from "chai";
import { ethers } from "hardhat";
import { Counter } from "@typechain";

describe("Counter", () => {
  let counter: Counter;

  beforeEach(async () => {
    const counterFactory = await ethers.getContractFactory("Counter");
    counter = await counterFactory.deploy();
  });

  it("should pass this canary test", () => {
    expect(true).to.be.true;
  });

  it("should be able to read number", async () => {
    const number = await counter.number();
    expect(number).to.equal(0);
  });

  it("should be able to increase number", async () => {
    await counter.increment();
    const number = await counter.number();
    expect(number).to.equal(1);
  });
});
