# cap-reuse-poc

What I did: save the metadata to `common.edmx`, import it into treatments 
`cds import ./common.edmx --as cds` and it'll appear in your package.json and in the `srv/external` folder. In your package file, you 
add your config for it such as 

```
      "common": {
        "kind": "odata",
        "model": "srv/external/common",
        "[development]": {
          "credentials": {
            "url": "http://.../common"
          }
        },
        "[production]": {
          "credentials": {
            "destination": "common"
          }
        }
      }
```

Where the destination takes care of pointing to the actual service and doing the necessary security stuff.

You can then reuse the common definitions by going into the common folder and doing 
`npm pack .`, it will create a tarball from your current app + version from package.json and adding it to the treatments 
`npm add ./common-1.0.0.tgz`.  

When you make or deploy new changes to common, itwould be wise to re-import the definitions if you make changes to Common, 
and increment the version number (I think its just `npm version patch` to go from 1.0.0 to 1.0.1 etc, no need to do that manually. 
That way we can track if the apps use the correct version as deployed. 
