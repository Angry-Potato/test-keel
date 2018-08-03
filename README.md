# test-keel

Test app demonstrating a potential keel issue.

# Build

Just run [Habitus](http://www.habitus.io/) in the root dir, this will build the runtime image.

# Deploy

To deploy the chart, change the `app.image` in the `test-app/values.yaml` to match your deployment setup, then install via helm.

# Potential Keel issue

After deploying the test app to your cluster with keel already running in it, tag a new version of the app image e.g.

```
 docker tag runtime eu.gcr.io/my-project/test-app:0.1.1-staging-green
```

and push it to the image registry that keel is watching

```
 docker push eu.gcr.io/my-project/test-app:0.1.1-staging-green
```

Keel then should report failure to update due to it being unable to re-use a name still in use.
