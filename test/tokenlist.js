const tokenlist = require("../tokenlist.json")

for (const token of tokenlist.tokens) {
  const Token = artifacts.require(token.name)

  let instance

  contract(token.name, async function() {
    beforeEach(async () => {
      instance = await Token.deployed()
    })

    it('should have the correct name', async function() { assert.equal(token.name, await instance.name()) })
    it('should have the correct symbol', async function() { assert.equal(token.symbol, await instance.symbol()) })
    it('should have the correct decimals', async function() { assert.equal(token.decimals, await instance.decimals()) })

    it('should have the correct address', async function() {
      assert.property(Token.networks, token.chainId)
      assert.equal(token.address, Token.networks[token.chainId].address)
    })
  })
}
