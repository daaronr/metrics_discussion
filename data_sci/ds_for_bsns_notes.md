# Notes on Data Science for Business by Foster Provost and Tom Fawcett


Terms like 'lift':

> As another example, in evaluating the utility of a pattern, we see a notion of lift— how much more prevalent a pattern is than would be expected by chance—recurring broadly across data science. It is used to evaluate very different sorts of patterns in different contexts. Algorithms for targeting advertisements are evaluated by computing the lift one gets for the targeted population. Lift is used to judge the weight of evidence for or against a conclusion. Lift helps determine whether a co-occurrence (an association) in data is interesting, as opposed to simply being a natural consequence of popularity.


## Introduction: Data-Analytic Thinking

Example: Hurricane Frances... predicting demand to gear inventory ... lead to huge profit for Wal-Mart...

> ‘We didn’t know in the past that strawberry PopTarts increase in sales, like seven times their normal sales rate, ahead of a hurricane"

> 1. Classification and class probability estimation attempt to predict, for each individual in a population, which of a (small) set of classes this individual belongs to. Usually the classes are mutually exclusive. An example classification question would be: “Among all the customers of MegaTelCo, which are likely to respond to a given offer?” In this example the two classes could be called 'will respond' and 'will not respond.'


### Example: Predicting Customer Churn

> Customers switching from one company to another is called churn,

> Your task is to devise a precise, step-by-step plan for how the data science team should use MegaTelCo’s vast data resources to decide which customers should be offered the special retention deal prior to the expiration of their contracts

### Data Science, Engineering, and Data-Driven Decision Making


> They show that statistically, the more datadriven a firm is, the more productive it is—even controlling for a wide range of possible confounding factors. And the differences are not small. One standard deviation higher on the DDD scale is associated with a 4%–6% increase in productivity. DDD also is correlated with higher return on assets, return on equity, asset utilization, and market value, and the relationship seems to be causal.

*DR: I still doubt the causality here*

>  two types: (1) decisions for which “discoveries” need to be made within data, and (2) decisions that repeat, especially at massive scale, and so decision-making can benefit from even small increases in decision-making accuracy based on data analysis


Getting the jump on the competition ...

> Target wanted to get a jump on their competition. They were interested in whether they could predict that people are expecting a baby. If they could, they would gain an advantage by making offers before their competitors. Using techniques of data science, Target analyzed historical data on customers who later were revealed to have been pregnant, and were able to extract information that could predict which consumers were pregnant. For example, pregnant mothers often change their diets, their ward‐ robes, their vitamin regimens, and so on. These indicators could be extracted from historical data, assembled into predictive models, and then deployed in marketing campaigns.

### Data Processing and “Big Data”

### Data and Data Science Capability as a Strategic Asset

> a science: data, and the capability to extract useful knowledge from data, should be regarded as key strategic assets.

Signet Bank from the 1990s ... key example

> , but at the time, credit cards essentially had uniform pricing, for two reasons: (1) the companies did not have adequate information systems to deal with differential pricing at massive scale, and (2) bank management believed customers would not stand for price discrimination.

> could do more sophisti‐ cated predictive modeling—using the sort of techniques that we discuss throughout this book—and offer different terms (nowadays: pricing, credit limits, low-initial-rate bal‐ ance transfers, cash back, loyalty points, and so on)

> convinced that modeling profitability, not just default probability, was the right strategy. They knew that a small proportion of customers actually account for more than 100% of a bank’s profit from credit card operations (because the rest are break-even or money-losing). If they could model profitability, they could make better offers to the best customers and “skim the cream” of the big banks’ clientele

> fundamental strategy of data science: acquire the necessary data at a cost

 > Different terms were offered at random to different cus‐ tomers. This may seem foolish outside the context of data-analytic thinking: you’re likely to lose money! This is true. In this case, losses are the cost of data acquisition. Losses continued for a few years while the data scientists worked to build predictive models from the data,

> Studies giving clear quantitative demonstrations of the value of a data asset are har find, primarily because firms are hesitant to divulge results of strategic value. One

> The huge val‐ uation of Facebook has been credited to its vast and unique data assets (Sengupta, 2012), including both information about individuals and their likes, as well as information about the structure of the social network. Information about network structure has been shown to be important to predicting and has been shown to be remarkably helpful in building models of who will buy certain products (Hill, Provost, & Volinsky, 2006).
\

### Data-Analytic Thinking

**Why business people need to understand data science**


E.g., in making valuations:

> venture capitalists must be able to invest wisely in businesses with substantial data assets, and business strategists must be able to devise plans that exploit data.

> As a few examples, if a consultant presents a proposal to mine a data asset to improve your business, you should be able to assess whether the proposal makes sense. If a competitor announces a new data partnership, you should recognize when it may put you at a strategic disadvantage. Or, let’s say you take a position with a venture firm and your first project is to assess the potential for investing in an advertising company. The founders present a convincing argument that they will realize significant value from a unique body of data they will collect, and on that basis are arguing for a substantially higher valuation. Is this reasonable? With an understanding of the fundamentals of data science you should be able to devise a few probing questions to determine whether their valuation arguments are plausible.

And employees interact with it:

> Data analytics projects reach into all business units. Employees throughout these units must interact with the data science team. If these employees do not have a fundamental grounding in the principles of dataanalytic thinking, they will not really understand what is happening in the business

### Data Mining and Data Science, Revisited

> extraction of useful (nontrivial, hope‐ fully actionable) patterns or models from large bodies of data

> Fundamental concept: Extracting useful knowledge from data to solve business problems can be treated systematically by following a process with reasonably well-defined stages. The Cross Industry Standard Process for Data Mining, abbreviated CRISP-DM (CRISPDM Project, 2000), is one codification of this process

**Overfitting**

>  The concept of overfitting and its avoidance permeates data science processes, algorithms, and evaluation methods

**Quantify benefits of using data**

> For our churn-management example, how exactly are we going to use the patterns extracted from historical data? Should the value of the customer be taken into account in addition to the likelihood of leaving? More generally, does the pattern lead to better decisions than some reasonable alterna‐ tive? How well would one have done by chance? How well would one do with a smart “default” alternative?

\

## Ch 2 Business Problems and Data Science Solutions

> A critical skill in data science is the ability to decompose a dataanalytics problem into pieces such that each piece matches a known task for which tools are available.


**Classification and class probability estimation**

*“Among all the customers of MegaTelCo, which are likely to respond to a given offer?”*

> 1. Classification and class probability estimation attempt to predict, for each individual in a population, which of a (small) set of classes this individual belongs to. Usually the classes are mutually exclusive. An example classification question would be: “Among all the customers of MegaTelCo, which are likely to respond to a given offer?” In this example the two classes could be called will respond and will not respond.

Logit, Mnlogit, etc

> A closely related task is scoring or class probability estimation. A scoring model applied to an indi‐ vidual produces, instead of a class prediction, a score representing the probability (or some other quantification of likelihood) that that individual belongs to each class. In our customer response scenario, a scoring model would be able to evaluate each individual customer and produce a score of how likely each is to respond to the offer

\

** Regression (“value estimation”) **

*“How much will a given customer use the service?”*

> 2. Regression (“value estimation”) attempts to estimate or predict, for each individual, the numerical value of some variable for that individual. An example regression question would be: **“How much will a given customer use the service?”** The property (variable) to be predicted here is service usage, and a model cou

** Similarity matching**

> Similarity matching attempts to identify similar individuals based on data known about them. Similarity matching can be used directly to find similar entities. For example, IBM is interested in finding companies similar to their best business cu tomers, in order to focus their sales force on the best opportunities

> > one of the most popular methods for making product recommendations (finding people who are similar to you in terms of the products they have liked or have purchased)

\
**Clustering**

> ... attempts to group individuals in a population together by their similarity, but not driven by any specific purpose. An example clustering question would be: “Do our customers form natural groups or segments?” Clustering is useful in pre‐ liminary domain exploration to see which natural groups exist because these groups in turn may suggest other data mining tasks or approaches

\

**Co-occurrence grouping**

*What items are commonly purchased together?*

> 5. Co-occurrence grouping (also known as frequent itemset mining, association rule discovery, and market-basket analysis) attempts to find associations between enti‐ ties based on transactions involving them.

> would be: What items are commonly purchased together? While clustering looks at similarity between objects based on the objects’ attributes, co-occurrence grouping considers similarity of objects based on their appearing together in transactions.
