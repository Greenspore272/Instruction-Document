Lesson.destroy_all

Lesson.create([
{
    title: "Setting Up Your Workshop",
    section: "Introduction",
    order: 0,
    content: <<~HTML
      <style>
        .tutorial-wrapper { max-width: 850px; margin: 2rem auto; font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif; color: #1e293b; }
        .content-well { background: #ffffff; border: 1px solid #e2e8f0; padding: 2.5rem; border-radius: 12px; line-height: 1.8; }
        .terminal-highlight { color: #38bdf8; font-family: "SFMono-Regular", Consolas, monospace; font-weight: 600; }
        .concept-card { background: #f8fafc; border-left: 4px solid #4f46e5; padding: 1.5rem; margin: 1.5rem 0; border-radius: 0 8px 8px 0; }
        h3 { color: #0f172a; margin-top: 2rem; }
        .label-header { font-size: 0.75rem; font-weight: 700; text-transform: uppercase; color: #94a3b8; }
      </style>

      <div class="tutorial-wrapper">
        <span class="label-header">Lesson 0</span>
        <h1 style="font-size: 2.5rem; font-weight: 800; margin-bottom: 2rem;">Setting Up Your Workshop</h1>

        <div class="content-well">
          <p>Before we write our first line of Ruby, we need to understand the two most important tools: <strong>VS Code</strong> and the <strong>Terminal</strong>.</p>

          <h3>1. What is VS Code?</h3>
          <p>Think of VS Code as a "Supercharged Notepad." It highlights mistakes and organizes your files.</p>
          
          <div class="concept-card">
            <strong>How to use it:</strong> 
            Open VS Code, go to <code>File > Open Folder</code>, and select your project folder.
          </div>

          <h3>2. The Terminal (The Command Line)</h3>
          <p>The Terminal is a text-based way to talk to your computer. We use it to start our servers and create files.</p>

          <h3>3. Essential Terminal Commands</h3>
          <p>Commands starting with a <code>$</code> mean "type this into the terminal."</p>

          <ul>
            <li><strong>Move into a folder:</strong> $ <span class="terminal-highlight">cd folder_name</span></li>
            <li><strong>See what's inside:</strong> $ <span class="terminal-highlight">ls</span></li>
            <li><strong>Create a new folder:</strong> $ <span class="terminal-highlight">mkdir project_name</span></li>
            <li><strong>Go back one folder:</strong> $ <span class="terminal-highlight">cd ..</span></li>
          </ul>

          <div class="concept-card" style="border-color: #38bdf8;">
            <strong>Try this now:</strong> Open the terminal in VS Code and type $ <span class="terminal-highlight">whoami</span>.
          </div>
        </div>
      </div>
    HTML
  },
 {
    title: "Ruby & Rails Intro",
    section: "Basics",
    order: 1,
    content: <<~CONTENT
      <strong>What is Ruby?</strong>

      Ruby is a high-level, interpreted programming language created in the mid-1990s by Yukihiro Matsumoto.

      It was designed to be <strong>easy to read, simple to write, and enjoyable to use</strong>, making it one of the most beginner-friendly languages available.

      <strong>Why Ruby is Popular</strong>
      - Clean and readable syntax
      - Fully object-oriented
      - Flexible and expressive
      - Great for beginners and professionals

      <strong>Example</strong>
      ```ruby
      puts "Hello, world!"
      ```

      This prints a message to the screen. Notice how natural and simple the code looks.

      ---

      <strong>What is Ruby on Rails?</strong>

      Ruby on Rails (Rails) is a web framework built using Ruby that helps developers create full web applications quickly.

      Instead of building everything from scratch, Rails gives you a <strong>ready-made structure</strong>.

      <strong>Key Concepts</strong>
      - <strong>MVC (Model-View-Controller)</strong>
        - Model → handles data
        - View → what users see
        - Controller → connects everything
      - <strong>Convention over Configuration</strong> → less setup, faster development
      - <strong>DRY (Don’t Repeat Yourself)</strong> → reuse code efficiently

      <strong>Why Ruby + Rails Together?</strong>

      They allow you to build real applications like:
      - Task managers
      - Blogs
      - Dashboards

      Quickly and with less code than many other frameworks.
    CONTENT
  },

  {
    title: "Installation",
    section: "Setup",
    order: 2,
    content: <<~CONTENT
      <strong>Step 1: Install Ruby</strong>

      First, download Ruby from:
      https://www.ruby-lang.org/en/downloads/

      Install it like any normal program.

      <strong>Verify Installation</strong>
      Open your terminal and run:
      ```
      ruby -v
      ```

      You should see a version number like:
      `ruby 3.x.x`

      ---

      <strong>Step 2: Install Rails</strong>

      Rails is installed using Ruby’s package manager.

      Run:
      ```
      gem install rails
      ```

      <strong>Verify Rails</strong>
      ```
      rails -v
      ```

      You should see:
      `Rails x.x.x`

      ---

      <strong>What You Now Have</strong>

      At this point:
      - Ruby is installed
      - Rails is installed
      - Your system is ready

      You’re now ready to build your first app.
    CONTENT
  },

  {
    title: "Create App",
    section: "Setup",
    order: 3,
    content: <<~CONTENT
      <strong>Step 1: Create a New App</strong>

      Run:
      ```
      rails new task_manager
      cd task_manager
      ```

      This creates a full project with all required files.

      ---

      <strong>Step 2: Generate a Feature (Scaffold)</strong>

      ```
      rails generate scaffold Task title:string description:text completed:boolean
      ```

      This automatically creates:
      - A model (data)
      - A controller (logic)
      - Views (pages)
      - Routes

      ---

      <strong>Step 3: Set Up the Database</strong>

      ```
      rails db:migrate
      ```

      This creates your database tables.

      ---

      <strong>Step 4: Start the Server</strong>

      ```
      rails server
      ```

      Visit:
      http://localhost:3000/tasks

      You now have a working app running in your browser.
    CONTENT
  },

  {
    title: "Develop",
    section: "Build",
    order: 4,
    content: <<~CONTENT
      <strong>Step 1: Update the Controller</strong>

      Open:
      `app/controllers/tasks_controller.rb`

      Modify the index action:
      ```ruby
      <pre><code class="language-ruby">
      def index
        @tasks = Task.order(:created_at)
      end
      </code></pre>
      ```

      This sorts tasks by when they were created.

      ---

      <strong>Step 2: Improve the View</strong>

      Open:
      `app/views/tasks/index.html.erb`

      Example:
      ```erb
      <pre><code class="language-erb">
      &lt;h1&gt;Task Manager&lt;/h1&gt;
      &lt;%= link_to "New Task", new_task_path %&gt;
      &lt;ul&gt;
        &lt;% @tasks.each do |task| %&gt;
          &lt;li&gt;
            &lt;strong&gt;&lt;%= task.title %&gt;&lt;/strong&gt;
            - &lt;%= task.completed ? "Completed" : "Not Done" %&gt;
            &lt;%= link_to "Show", task_path(task) %&gt;
            &lt;%= link_to "Edit", edit_task_path(task) %&gt;
          &lt;/li&gt;
        &lt;% end %&gt;
      &lt;/ul&gt;
      </code></pre>
      ```

      ---

      <strong>Step 3: Customize Your App</strong>

      You can now:
      - Add new fields
      - Change layout/design
      - Add filters or sorting

      This is where your app becomes your own.
    CONTENT
  },

  {
    title: "Use",
    section: "Operate",
    order: 5,
    content: <<~CONTENT
      <strong>Step 1: Start the App</strong>

      Run:
      ```
      rails server
      ```

      Then go to:
      http://localhost:3000/tasks

      ---

      <strong>Step 2: Create Tasks</strong>

      - Click <strong>New Task</strong>
      - Fill in the form
      - Save your task

      ---

      <strong>Step 3: Manage Tasks</strong>

      You can:
      - View details
      - Edit tasks
      - Delete tasks
      - Mark tasks as complete

      Changes update instantly in your app.

      ---

      <strong>Final Result</strong>

      You now have:
      - A working Rails app
      - A database-backed system
      - Full CRUD functionality

      Congratulations — you built your first application.
    CONTENT
  },
  {
    title: "Personalizing Your App",
    section: "Extras",
    order: 6,
    content: <<~CONTENT
      <strong>Level Up Your Task Manager</strong>

      Now that you have a working app, it's time to make it yours. Here are 5 ways to customize it:

      ---

      <strong>1. Add a 'Priority' Level</strong>
      <strong>Why:</strong> Not all tasks are equal. Adding a priority helps you focus on what matters.
      <strong>How:</strong> Run this in your terminal to add a new column to your database:
      $ <span class="terminal-highlight">rails generate migration AddPriorityToTasks priority:string</span>
      $ <span class="terminal-highlight">rails db:migrate</span>
      <em>Then, update your forms in VS Code to include a dropdown for 'High', 'Medium', or 'Low'.</em>

      ---

      <strong>2. Clean Up the Task List</strong>
      <strong>Why:</strong> By default, Rails shows tasks in the order they were created. You might want the newest ones at the top.
      <strong>How:</strong> Open `app/controllers/tasks_controller.rb` and find the index action:
      ```ruby
      def index
        @tasks = Task.order(created_at: :desc)
      end
      ```

      ---

      <strong>3. Add a Search Bar</strong>
      <strong>Why:</strong> As your list grows, finding one specific task gets harder.
      <strong>How:</strong> You can use a 'gem' (a pre-built Ruby tool) called **Ransack**.
      $ <span class="terminal-highlight">bundle add ransack</span>
      <em>This allows you to filter tasks by title or description easily.</em>

      ---

      <strong>4. Change the Look (CSS)</strong>
      <strong>Why:</strong> The default Rails look is very plain. You want your app to look modern.
      <strong>How:</strong> Open `app/assets/stylesheets/application.css` and add your own styles, or add a framework like **Tailwind CSS**:
      $ <span class="terminal-highlight">bundle add tailwindcss-rails</span>
      $ <span class="terminal-highlight">rails tailwindcss:install</span>

      ---

      <strong>5. Set a Default 'Completed' Status</strong>
      <strong>Why:</strong> When you create a task, it should start as "Not Done" automatically.
      <strong>How:</strong> You can set this in your database migration or directly in the model `app/models/task.rb`:
      ```ruby
      after_initialize do
        self.completed ||= false if new_record?
      end
      ```

      ---

      <strong>What's Next?</strong>
      The best way to learn is to try to break things! Change a color, rename a button, or add a "Due Date" field. You have the tools, now go build something unique.
    CONTENT
  }
])