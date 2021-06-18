# people

-   [Fields](#fields)
-   [Queries](#queries)
-   [Mutations](#mutations)
-   [Subscriptions](#subscriptions)

## Fields

List of fields available in the `people` type.

| Field   | Scalar Type | Unique  | Required (create) |
| ------- | ----------- | ------- | ----------------- |
| id      | Int         | true    | true              |
| name    | String      | _false_ | _false_           |
| country | String      | _false_ | _false_           |

## Queries

Queries are responsible for all `Read` operations.

The generated queries are:

-   `getpeople`: Read a single people.
-   `listpeople`: Read multiple people.

### Querying a single people

Single people queries can take one input:

-   `where`: `peopleWhereUniqueInput!` A required object type specifying a field with a unique constraint (like id).

**Standard query**

```graphql
query {
    getpeople(where: { id: 2 }) {
        id
        name
        country
    }
}
```

### Querying multiple people

Multiple people queries can take four inputs:

-   `where`: `peopleWhereFilterInput` An optional object type to filter the content based on a nested set of criteria.
-   `orderBy`: `peopleOrderByInput` An optional object type to select which field(s) and order to sort the records on. Sorting can be in ascending order `ASC` or descending order `DESC`.
-   `skip`: `Int` An optional number that specifies how many of the returned objects in the list should be skipped.
-   `take`: `Int` An optional number that specifies how many objects should be returned in the list.

**Standard query**

```graphql
query {
    listpeople {
        id
        name
        country
    }
}
```

**Standard query with offset pagination**

```graphql
query {
    listpeople(skip: 0, take: 25) {
        id
        name
        country
    }
}
```

**Standard query with basic where filter**

```graphql
query {
    listpeople(where: { name: { equals: "Foo" } }) {
        id
        name
        country
    }
}
```

**Standard query with more advanced where filter**

```graphql
query {
    listpeople(
        where: { name: { not: { equals: "Foo" } } }
    ) {
        id
        name
        country
    }
}
```

**Standard query with orderBy**

```graphql
query {
    listpeople(orderBy: { name: DESC }) {
        id
        name
        country
    }
}
```

## Mutations

Mutations are responsible for all `Create`, `Update`, and `Delete` operations.

The generated mutations are:

-   `createpeople`: Create a single people.
-   `updatepeople`: Update a single people.
-   `upsertpeople`: Update existing OR create single people.
-   `deletepeople`: Delete a single people.
-   `deleteManypeople`: Delete multiple people.

### Creating a single people

Single people create mutations can take one input:

-   `data`: `peopleCreateInput!` A required object type specifying the data to create a new record.

**Standard create mutation**

```graphql
mutation {
    createpeople(data: { name: "Foo", country: "Foo" }) {
        id
        name
        country
    }
}
```

### Updating a single people

Single people update mutations can take two input:

-   `where`: `peopleWhereUniqueInput!` A required object type specifying a field with a unique constraint (like id).
-   `data`: `peopleUpdateInput!` A required object type specifying the data to update.

**Standard update mutation**

```graphql
mutation {
    updatepeople(
        where: { id: 2 }
        data: { name: "Foo", country: "Foo" }
    ) {
        id
        name
        country
    }
}
```

### Deleting a single people

Single people delete mutations can take one input:

-   `where`: `peopleWhereUniqueInput!` A required object type specifying a field with a unique constraint (like id).

**Standard delete mutation**

```graphql
mutation {
    deletepeople(where: { id: 2 }) {
        id
        name
        country
    }
}
```

### Deleting multiple people

Multiple people delete mutations can take one input:

-   `where`: `peopleWhereFilterInput!` A required object type specifying a field with a unique constraint (like name).

**Standard deleteMany mutation**

```graphql
mutation {
    deleteManypeople(where: { name: "Foo" }) {
        count
    }
}
```

> `deleteManypeople` returns an integer that represents the number of records that were deleted.

## Subscriptions

Subscriptions allows listen for data changes when a specific event happens, in real-time.

### Subscribing to a single people creation

```graphql
subscription {
    onCreatedpeople {
        id
        name
        country
    }
}
```

### Subscribing to a single people update

```graphql
subscription {
    onUpdatedpeople {
        id
        name
        country
    }
}
```

### Subscribing to a single people deletion

```graphql
subscription {
    onDeletedpeople {
        id
        name
        country
    }
}
```
