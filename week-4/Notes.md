# Notes for Week 4 #

## Lesson 13
**Frontend**
- alchemy create-web3-dapp:
   - uses next.js
   - react with typescript
   - other tools for web development

- react: dynamic content  
   - page is reloaded at compilation, opening site, and refresh -> causes hydration error
   - 

## Lesson 14
**Dynamic Content**
- react hooks -> wagmi -> viem (equivalent to ethers)


**Hydration Error**
Hydration error can occur in Next.js when the server-rendered HTML output doesn't match the client-rendered HTML output. This can happen when client-side-only code, such as code that depends on the window object, is executed during server rendering.

**websocket error**
WalletConnect requires a  new project id: https://cloud.walletconnect.com/app
Update id and project name in layout.tsx

## Lesson 15
- install nest application with ```nest new project-name```
- AppModule in nest is wrapping the controller and service and can be invoked by the factory
- modifiers @Modifier are used to give the template for a class
- install swagger for user interface of the api
- install dotenv

**Query with Nest**
Two ways of doing a query with a parameter in nest:

1) value appended to the path (everything appended is passed as a parameter)
```@Get('get-test-param/:value')
getTestParameter(@Param('value') value: string) {
   return value;
}```

2) building a query - appended to path with question mark and parameter value
```@Get('get-test-query')
getTestQuery(@Query('value') value: string, @Query('other') other: string) {
   return value;
}```

## Lesson 16

**connect backend with frontend**
- use different ports (backend 3001, frontend 3000)
- it is better to have api responses using objects because the response called by frontend are more specific.
   They can be created on the fly with {address: TOKENADDRESS}
- simply calling api from frontend will throw CORS error, can be enabled in main.ts in nest

**Adding mint function**
- mint function is not a get method (can't be called over and over again)
   need to use @Post (import from nest), provide path 'mint-tokens'
   Post cannot be called in the browser using the url
   -d is for data (payload object can be received as a Body)
- create DTO (data transfer object)
   a folder with some classes in it (e.g. files: mintToken.dto.ts)
   create a class of the DTO