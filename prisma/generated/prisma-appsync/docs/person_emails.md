# person_emails

-   [Fields](#fields)
-   [Queries](#queries)
-   [Mutations](#mutations)
-   [Subscriptions](#subscriptions)

## Fields

List of fields available in the `person_emails` type.

| Field     | Scalar Type | Unique  | Required (create) |
| --------- | ----------- | ------- | ----------------- |
| id        | Int         | true    | true              |
| person_id | Int         | _false_ | true              |
| value     | String      | _false_ | _false_           |

## Queries

Queries are responsible for all `Read` operations.

The generated queries are:

-   `getperson_emails`: Read a single person_emails.
-   `listperson_emails`: Read multiple person_emails.

### Querying a single person_emails

Single person_emails queries can take one input:

-   `where`: `person_emailsWhereUniqueInput!` A required object type specifying a field with a unique constraint (like id).

**Standard query**

```graphql
query {
    getperson_emails(where: { id: 2 }) {
        id
        person_id
        value
    }
}
```

### Querying multiple person_emails

Multiple person_emails queries can take four inputs:

-   `where`: `person_emailsWhereFilterInput` An optional object type to filter the content based on a nested set of criteria.
-   `orderBy`: `person_emailsOrderByInput` An optional object type to select which field(s) and order to sort the records on. Sorting can be in ascending order `ASC` or descending order `DESC`.
-   `skip`: `Int` An optional number that specifies how many of the returned objects in the list should be skipped.
-   `take`: `Int` An optional number that specifies how many objects should be returned in the list.

**Standard query**

```graphql
query {
    listperson_emails {
        id
        person_id
        value
    }
}
```

**Standard query with offset pagination**

```graphql
query {
    listperson_emails(skip: 0, take: 25) {
        id
        person_id
        value
    }
}
```

**Standard query with basic where filter**

```graphql
query {
    listperson_emails(where: { person_id: { equals: 2 } }) {
        id
        person_id
        value
    }
}
```

**Standard query with more advanced where filter**

```graphql
query {
    listperson_emails(
        where: { person_id: { not: { equals: 2 } } }
    ) {
        id
        person_id
        value
    }
}
```

**Standard query with orderBy**

```graphql
query {
    listperson_emails(orderBy: { person_id: DESC }) {
        id
        person_id
        value
    }
}
```

## Mutations

Mutations are responsible for all `Create`, `Update`, and `Delete` operations.

The generated mutations are:

-   `createperson_emails`: Create a single person_emails.
-   `updateperson_emails`: Update a single person_emails.
-   `upsertperson_emails`: Update existing OR create single person_emails.
-   `deleteperson_emails`: Delete a single person_emails.
-   `deleteManyperson_emails`: Delete multiple person_emails.

### Creating a single person_emails

Single person_emails create mutations can take one input:

-   `data`: `person_emailsCreateInput!` A required object type specifying the data to create a new record.

**Standard create mutation**

```graphql
mutation {
    createperson_emails(
        data: { person_id: 2, value: "Foo" }
    ) {
        id
        person_id
        value
    }
}
```

### Updating a single person_emails

Single person_emails update mutations can take two input:

-   `where`: `person_emailsWhereUniqueInput!` A required object type specifying a field with a unique constraint (like id).
-   `data`: `person_emailsUpdateInput!` A required object type specifying the data to update.

**Standard update mutation**

```graphql
mutation {
    updateperson_emails(
        where: { id: 2 }
        data: { person_id: 2, value: "Foo" }
    ) {
        id
        person_id
        value
    }
}
```

### Deleting a single person_emails

Single person_emails delete mutations can take one input:

-   `where`: `person_emailsWhereUniqueInput!` A required object type specifying a field with a unique constraint (like id).

**Standard delete mutation**

```graphql
mutation {
    deleteperson_emails(where: { id: 2 }) {
        id
        person_id
        value
    }
}
```

### Deleting multiple person_emails

Multiple person_emails delete mutations can take one input:

-   `where`: `person_emailsWhereFilterInput!` A required object type specifying a field with a unique constraint (like person_id).

**Standard deleteMany mutation**

```graphql
mutation {
    deleteManyperson_emails(where: { person_id: 2 }) {
        count
    }
}
```

> `deleteManyperson_emails` returns an integer that represents the number of records that were deleted.

## Subscriptions

Subscriptions allows listen for data changes when a specific event happens, in real-time.

### Subscribing to a single person_emails creation

```graphql
subscription {
    onCreatedperson_emails {
        id
        person_id
        value
    }
}
```

### Subscribing to a single person_emails update

```graphql
subscription {
    onUpdatedperson_emails {
        id
        person_id
        value
    }
}
```

### Subscribing to a single person_emails deletion

```graphql
subscription {
    onDeletedperson_emails {
        id
        person_id
        value
    }
}
```
